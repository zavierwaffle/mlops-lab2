{{- define "mlops-search.image" -}}
{{- if not (regexMatch "^sha256:[a-f0-9]{64}$" (.Values.image.digest | default "")) -}}
{{- fail "image.digest must be a valid sha256:<64-hex> digest; mutable tags are forbidden" -}}
{{- end -}}
{{- printf "%s@%s" .Values.image.repository .Values.image.digest -}}
{{- end -}}


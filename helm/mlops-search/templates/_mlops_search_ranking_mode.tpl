{{- define "mlops-search.ranking-mode" -}}
{{- $mode := .Values.rankingMode | default "" -}}
{{- if not (regexMatch "^(normal|reverse)$" $mode) -}}
{{- fail "rankingMode must be 'normal' or 'reverse'; empty value is forbidden" -}}
{{- end -}}
{{- $mode -}}
{{- end -}}

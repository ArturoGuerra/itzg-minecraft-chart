{{/* vim: set filetype=mustache: */}}
{{- define "name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "label" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "config-name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "data-pvc" -}}
{{- default .Values.data.existingClaim .Release.Name -}}
{{- end -}}

{{- define "backups-config" -}}
{{- default .Values.backups.name (printf "%s-backups" .Release.Name) }}
{{- end -}}

{{- define "backups-pvc" -}}
{{- default .Values.backups.existingClaim (printf "%s-backups" .Release.Name) }}
{{- end -}}
{{/* vim: set filetype=mustache: */}}
{{- define "name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "config-name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "data-pvc" -}}
{{- default .Release.Name .Values.data.existingClaim -}}
{{- end -}}

{{- define "backups-config" -}}
{{- default (printf "%s-backups" .Release.Name) .Values.backups.name -}}
{{- end -}}

{{- define "backups-pvc" -}}
{{- default (printf "%s-backups" .Release.Name) .Values.backups.existingClaim -}}
{{- end -}}
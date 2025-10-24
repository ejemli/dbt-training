{% macro limit_dtat_in_dev(column_name) %}
{% if target.nama == 'development' %}
where {{column_name}} >= dataadd ('day', -30, current_timestamp)
{% endif %}
{% endmacro %}
{% set minion_id = grains['id'] %}
{% if minion_id.startswith('d') %}
environment:
  grains.present:
    - name: environment
    - value: dev
{% elif minion_id.startswith('t') %}
environment:
  grains.present:
    - name: environment
    - value: test
{% elif minion_id.startswith('p') %}
environment:
  grains.present:
    - name: environment
    - value: preprod
{% elif minion_id.startswith('l') %}
environment:
  grains.present:
    - name: environment
    - value: prod
{% endif %}
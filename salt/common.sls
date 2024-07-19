{% set common_packages = salt['pillar.get']('packages:common', []) %}
{% set os_family = grains['os_family'] %}
{% set os_specific_packages = salt['pillar.get']('packages:os_specific:' ~ os_family, []) %}
{% set all_packages = common_packages + os_specific_packages %}

install_common_packages:
  pkg.installed:
    - pkgs: {{ all_packages }}

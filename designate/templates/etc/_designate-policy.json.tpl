{
    "context_is_cloud_admin": "role:cloud_dns_admin",
    "context_is_dns_admin": "role:dns_admin",
    "admin": "rule:context_is_cloud_admin or is_admin:True",
    "primary_zone": "target.zone_type:SECONDARY",

    "owner": "tenant:%(tenant_id)s",
    "admin_or_owner": "rule:admin or rule:owner",
    "target": "tenant:%(target_tenant_id)s",
    "owner_or_target":"rule:target or rule:owner",
    "admin_or_owner_or_target":"rule:owner_or_target or rule:admin",
    "admin_or_target":"rule:admin or rule:target",
    "cloud_admin_or_dns_admin": "rule:admin or (rule:owner and rule:context_is_dns_admin)",

    "zone_primary_or_admin": "('PRIMARY':%(zone_type)s and rule:admin_or_owner) or ('SECONDARY':%(zone_type)s and is_admin:True)",

    "default": "rule:admin_or_owner",

    "all_tenants": "rule:admin",

    "edit_managed_records" : "rule:admin",

    "use_low_ttl": "rule:admin",

    "get_quotas": "rule:admin_or_owner",
    "get_quota": "rule:admin_or_owner",
    "set_quota": "rule:admin",
    "reset_quotas": "rule:admin",

    "create_tld": "rule:admin",
    "find_tlds": "rule:admin",
    "get_tld": "rule:admin",
    "update_tld": "rule:admin",
    "delete_tld": "rule:admin",

    "create_tsigkey": "rule:admin",
    "find_tsigkeys": "rule:admin",
    "get_tsigkey": "rule:admin",
    "update_tsigkey": "rule:admin",
    "delete_tsigkey": "rule:admin",

    "find_tenants": "rule:admin",
    "get_tenant": "rule:admin",
    "count_tenants": "rule:admin",

    "create_zone": "rule:cloud_admin_or_dns_admin",
    "get_zones": "rule:admin_or_owner",
    "get_zone": "rule:admin_or_owner",
    "get_zone_servers": "rule:admin_or_owner",
    "find_zones": "rule:admin_or_owner",
    "find_zone": "rule:admin_or_owner",
    "update_zone": "rule:cloud_admin_or_dns_admin",
    "delete_zone": "rule:cloud_admin_or_dns_admin",
    "xfr_zone": "rule:admin_or_owner",
    "abandon_zone": "rule:admin",
    "count_zones": "rule:admin_or_owner",
    "count_zones_pending_notify": "rule:admin_or_owner",
    "purge_zones": "rule:admin",
    "touch_zone": "rule:admin_or_owner",

    "create_recordset": "rule:zone_primary_or_admin",
    "get_recordsets": "rule:admin_or_owner",
    "get_recordset": "rule:admin_or_owner",
    "find_recordsets": "rule:admin_or_owner",
    "find_recordset": "rule:admin_or_owner",
    "update_recordset": "rule:zone_primary_or_admin",
    "delete_recordset": "rule:zone_primary_or_admin",
    "count_recordset": "rule:admin_or_owner",

    "create_record": "rule:admin_or_owner",
    "get_records": "rule:admin_or_owner",
    "get_record": "rule:admin_or_owner",
    "find_records": "rule:admin_or_owner",
    "find_record": "rule:admin_or_owner",
    "update_record": "rule:admin_or_owner",
    "delete_record": "rule:admin_or_owner",
    "count_records": "rule:admin_or_owner",

    "use_sudo": "rule:admin",

    "create_blacklist": "rule:admin",
    "find_blacklist": "rule:admin",
    "find_blacklists": "rule:admin",
    "get_blacklist": "rule:admin",
    "update_blacklist": "rule:admin",
    "delete_blacklist": "rule:admin",
    "use_blacklisted_zone": "rule:admin",

    "create_pool": "rule:admin",
    "find_pools": "rule:admin",
    "find_pool": "rule:admin",
    "get_pool": "rule:admin",
    "update_pool": "rule:admin",
    "delete_pool": "rule:admin",
    "zone_create_forced_pool": "rule:admin",

    "diagnostics_ping": "rule:admin",
    "diagnostics_sync_zones": "rule:admin",
    "diagnostics_sync_zone": "rule:admin",
    "diagnostics_sync_record": "rule:admin",

    "create_zone_transfer_request": "rule:admin_or_owner",
    "get_zone_transfer_request": "rule:admin_or_owner or tenant:%(target_tenant_id)s or None:%(target_tenant_id)s",
    "get_zone_transfer_request_detailed": "rule:admin_or_owner",
    "find_zone_transfer_requests": "@",
    "find_zone_transfer_request": "@",
    "update_zone_transfer_request": "rule:admin_or_owner",
    "delete_zone_transfer_request": "rule:admin_or_owner",

    "create_zone_transfer_accept": "rule:admin_or_owner or tenant:%(target_tenant_id)s or None:%(target_tenant_id)s",
    "get_zone_transfer_accept": "rule:admin_or_owner",
    "find_zone_transfer_accepts": "rule:admin",
    "find_zone_transfer_accept": "rule:admin",
    "update_zone_transfer_accept": "rule:admin",
    "delete_zone_transfer_accept": "rule:admin",

    "create_zone_import": "rule:cloud_admin_or_dns_admin",
    "find_zone_imports": "rule:cloud_admin_or_dns_admin",
    "get_zone_import": "rule:cloud_admin_or_dns_admin",
    "update_zone_import": "rule:cloud_admin_or_dns_admin",
    "delete_zone_import": "rule:cloud_admin_or_dns_admin",

    "zone_export": "rule:admin_or_owner",
    "create_zone_export": "rule:admin_or_owner",
    "find_zone_exports": "rule:admin_or_owner",
    "get_zone_export": "rule:admin_or_owner",
    "update_zone_export": "rule:admin_or_owner",

    "find_service_status": "rule:admin",
    "find_service_statuses": "rule:admin",
    "update_service_service_status": "rule:admin"
}

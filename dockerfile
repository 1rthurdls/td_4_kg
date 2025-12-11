FROM neo4j:5.15.0

# Set environment variables
ENV NEO4J_AUTH=neo4j/password123
ENV NEO4J_dbms_memory_pagecache_size=1G
ENV NEO4J_dbms_memory_heap_initial__size=1G
ENV NEO4J_dbms_memory_heap_max__size=2G

# Enable APOC plugin
ENV NEO4J_PLUGINS=["apoc"]

# Expose ports
# 7474 for HTTP
# 7687 for Bolt
EXPOSE 7474 7687

# Volume for data persistence
VOLUME /data
#!/bin/bash

# Create main project structure
mkdir -p deepveritas/{docker,src,config,tests,scripts}

# Docker setup
mkdir -p deepveritas/docker
touch deepveritas/docker/Dockerfile.temporal
touch deepveritas/docker/Dockerfile.agent
touch deepveritas/docker/Dockerfile.evaluator
touch deepveritas/docker/docker-compose.yml

# Source code structure
mkdir -p deepveritas/src/{core,agents,knowledge_graph,ui,utils}
mkdir -p deepveritas/src/core/workflows
mkdir -p deepveritas/src/agents/{scraper,validator,storage,evaluator,governance}
mkdir -p deepveritas/src/ui/widgets

# Create core files
touch deepveritas/src/core/temporal_worker.py
touch deepveritas/src/core/workflows/{data_validation.py,scraping.py,governance_flow.py}

# Create agent files
touch deepveritas/src/agents/scraper/{website_scraper.py,api_scraper.py}
touch deepveritas/src/agents/validator/{schema_validator.py,semantic_checker.py}
touch deepveritas/src/agents/storage/{neo4j_connector.py,postgres_manager.py}
touch deepveritas/src/agents/evaluator/{metrics_calculator.py,drift_detector.py,performance_reporter.py}
touch deepveritas/src/agents/governance/{decision_engine.py,policy_manager.py,recollect_trigger.py}

# Knowledge graph setup
touch deepveritas/src/knowledge_graph/{schema.py,query_builder.py}

# UI components
touch deepveritas/src/ui/dashboard.py
touch deepveritas/src/ui/widgets/{alerts.py,metrics.py}

# Utilities
touch deepveritas/src/utils/{logging.py,error_handling.py,data_processing.py}

# Configuration files
mkdir -p deepveritas/config
touch deepveritas/config/{agents.yaml,temporal.yaml,governance_policies.yaml}

# Test structure
mkdir -p deepveritas/tests/{unit,integration}
touch deepveritas/tests/unit/{test_scraper.py,test_governance.py,test_evaluator.py}
touch deepveritas/tests/integration/{test_workflows.py,test_end_to_end.py}

# Scripts
touch deepveritas/scripts/{setup_db.sh,start_agents.sh,deploy_cluster.sh}

# Root level files
touch deepveritas/{README.md,.gitignore,requirements.txt} 
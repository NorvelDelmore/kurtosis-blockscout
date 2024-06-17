config = "./config.star"
database = "./database.star"
database_init = "./files/init.sql"
backend = "./backend.star"
stats = "./stats.star"
visualize = "./visualize.star"
frontend = "./frontend.star"


def run(plan, args):
    conf = {
        "IMAGE": "ghcr.io/blockscout/frontend:v1.30.0",
        "NAME": "bs-frontend-001",
        "PORT": 50101,
        "IP": None,
        "TITLE": "Polygon CDK",
        "COMMON": {
            "blockscout_public_port": 50101,
            "chain_id": "10101",
            "deployment_suffix": "-001",
            "rpc_url": "http://172.16.0.13:8123",
            "trace_url": "http://172.16.0.13:8123",
            "ws_url": "ws://172.16.0.13:8133",
            "swap_url": "https://app.uniswap.org/#/swap",
            "l1_explorer": "https://etherscan.io/",
            "l1_rpc_url": "https://rpc2.sepolia.org/",
            "backend_exposed": False
        }
    }
    stack_info = {
        "api_host": "172.16.0.26",
        "api_port": 4004,
        "stats_host": "172.16.0.27",
        "stats_port": 8050,
        "visualize_host": "172.16.0.28",
        "visualize_port": 8050
    }
    import_module(frontend).run(plan, conf, stack_info)

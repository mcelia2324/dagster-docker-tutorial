from dagster import asset, define_asset_job, repository

@asset
def simple_asset():
    return "Hello, Dagster!"

all_assets_job = define_asset_job("all_assets_job", selection="*")

@repository
def my_repository():
    return [simple_asset, all_assets_job]


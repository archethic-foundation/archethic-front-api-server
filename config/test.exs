import Config

config :archethic_fas, ArchethicFAS.QuotesLatest.Provider.CoinMarketCap,
  key: "b54bcf4d-1bca-4e8e-9a24-22ff2c3d462c",
  endpoint: "sandbox-api.coinmarketcap.com",
  transport_opts: [verify: :verify_none]

config :archethic_fas, ArchethicFAS.QuotesHistorical.Provider.Coingecko,
  key: "CG-1unHMswa6Nwjqi9XJygoubVJ"

config :archethic_fas,
  api_port: 33333

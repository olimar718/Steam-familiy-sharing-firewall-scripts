# What is this

A set of scripts to block steam from accessing INTERNET in order to facilitate the nefarious use of steam family sharing, see [https://store.steampowered.com/promotion/familysharing](https://store.steampowered.com/promotion/familysharing)

# Setup

Download the scripts by either git clone or by downloading and extracting the zip. Put all the scripts in the same arbitrary location on your filesystem

## Set execution policy to unrestricted so that you can execute powershell scripts
- Open PowerShell as admin (right clic, execute as admin), and run the following commands:

`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`

`Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted`

`Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted`

These commands will allow the execution of all `powershell` scripts on your system.

## Set the settings in `settings.ps1`

- Set the `$steam_path` variable to the location of your steam executable. To help you identify it : whithin the same directory as your steam executable you should have the following files (approximatively):

```
appcache                       sfs-select
Backups                        singleapplauncher
bin                            ssfn15447013357657805
clientui                       ssfn2848245292750971633
config                         steam
controller_base                Steam.dll
crashhandler.dll               steam.exe
crashhandler.dll.old           steam.exe.old
crashhandler64.dll             steam.signatures
CSERHelper.dll                 Steam2.dll
d3dcompiler_46.dll             steamapps
d3dcompiler_46_64.dll          steamchina
depotcache                     steamclient.dll
drivers                        steamclient64.dll
dumps                          steamerrorreporter.exe
fossilize_engine_filters.json  steamerrorreporter64.exe
friends                        SteamFossilizeVulkanLayer.json
GameOverlayRenderer.dll        SteamFossilizeVulkanLayer64.json
GameOverlayRenderer.log        SteamOverlayVulkanLayer.dll
GameOverlayRenderer64.dll      SteamOverlayVulkanLayer.json
GameOverlayUI.exe              SteamOverlayVulkanLayer64.dll
GameOverlayUI.exe.log          SteamOverlayVulkanLayer64.json
GameOverlayUI.exe.log.last     steamui
GfnRuntimeSdk.dll              SteamUI.dll
graphics                       steamwebrtc.dll
icui18n.dll                    steamwebrtc64.dll
icuuc.dll                      streaming_client.exe
libavcodec-58.dll              streaming_client.exe.log
libavformat-58.dll             streaming_client.exe.log.last
libavresample-4.dll            tenfoot
libavutil-56.dll               ThirdPartyLegalNotices.css
libfreetype-6.dll              ThirdPartyLegalNotices.doc
libharfbuzz-0.dll              ThirdPartyLegalNotices.html
libswscale-5.dll               tier0_s.dll
libx264-142.dll                tier0_s64.dll
libx264-142.dll.crypt          ubuntu12_64
libx264-142.dll.md5            uninstall.exe
logs                           update_hosts_cached.vdf
music                          userdata
network_config.json            v8.dll
openvr_api.dll                 video.dll
package                        VkLayer_steam_fossilize.dll
public                         VkLayer_steam_fossilize64.dll
resource                       vstdlib_s.dll
SDL2.dll                       vstdlib_s64.dll
SDL2_ttf.dll                   WriteMiniDump.exe
servers                        zlib1.dll
```

- Set the `$rule_name` variable to whatever you want. This is the name of the rule as it will appear in windows firewall manager(`wf.msc`)

Now you can execute the bat files by double clicking on them

- run the `block_wrapper.bat` to block steam from accessing INTERNET

- run the `unblock_wrapper.bat` to allow access to INTERNET for steam

## Running the powershell script directly

You can run the powershell script directly (right click `run with powershell`)

However, some program cannot run powershell scripts.

For example, razer synapse 2, for my razer blackwidow ultimate 2014, cannot run powershell script on the macro keys using the the `launch program` option.

Hence the bat wrappers, which can be run from the macro keys.

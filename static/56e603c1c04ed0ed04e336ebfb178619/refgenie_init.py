from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Directory

Refgenie_Init_V0_1_0 = CommandToolBuilder(tool="refgenie_init", base_command=["refgenie", "init"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_genome_server", input_type=Array(t=String(), optional=True), prefix="--genome-server", doc=InputDocumentation(doc="URL(s) to use for the genome_servers attribute in\nconfig file. Default: http://refgenomes.databio.org.")), ToolInput(tag="in_genome_folder", input_type=Directory(optional=True), prefix="--genome-folder", doc=InputDocumentation(doc="Absolute path to parent folder refgenie-managed\nassets.")), ToolInput(tag="in_genome_archive_folder", input_type=Directory(optional=True), prefix="--genome-archive-folder", doc=InputDocumentation(doc="Absolute path to parent archive folder refgenie-\nmanaged assets; used by refgenieserver.")), ToolInput(tag="in_genome_archive_config", input_type=File(optional=True), prefix="--genome-archive-config", doc=InputDocumentation(doc="Absolute path to desired archive config file; used by\nrefgenieserver.")), ToolInput(tag="in_remote_url_base", input_type=String(optional=True), prefix="--remote-url-base", doc=InputDocumentation(doc="URL to use as an alternative, remote archive location;\nused by refgenieserver.")), ToolInput(tag="in_settings_json", input_type=File(optional=True), prefix="--settings-json", doc=InputDocumentation(doc="Absolute path to a JSON file with the key value pairs\nto inialize the configuration file with. Overwritten\nby itemized specifications.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Init_V0_1_0().translate("wdl", allow_empty_container=True)


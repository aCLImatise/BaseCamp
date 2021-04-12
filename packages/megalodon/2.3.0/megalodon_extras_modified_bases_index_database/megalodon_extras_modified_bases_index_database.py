from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Megalodon_Extras_Modified_Bases_Index_Database_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_index_database", base_command=["megalodon_extras", "modified_bases", "index_database"], inputs=[ToolInput(tag="in_megalodon_directory", input_type=Directory(optional=True), prefix="--megalodon-directory", doc=InputDocumentation(doc="Megalodon output directory containing per-read\nmodified bases database to be indexed. Default:\nmegalodon_results")), ToolInput(tag="in_output_suffix", input_type=File(optional=True), prefix="--output-suffix", doc=InputDocumentation(doc="Log file suffix. Default: mod_index_database\n"))], outputs=[ToolOutput(tag="out_megalodon_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_megalodon_directory", type_hint=File()), doc=OutputDocumentation(doc="Megalodon output directory containing per-read\nmodified bases database to be indexed. Default:\nmegalodon_results"))], container="quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Index_Database_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, File, Boolean

Phyluce_Assembly_Assemblo_Abyss_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_assemblo_abyss", base_command=["phyluce_assembly_assemblo_abyss"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the assembly data")), ToolInput(tag="in_km_er", input_type=String(optional=True), prefix="--kmer", doc=InputDocumentation(doc="The kmer value to use")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores/threads to run with")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="Cleanup all intermediate Trinity files")), ToolInput(tag="in_abyss_se", input_type=Boolean(optional=True), prefix="--abyss-se", doc=InputDocumentation(doc="Only use abyss-se")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A configuration file containing reads to assemble")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="A directory of reads to assemble")), ToolInput(tag="in_trinity", input_type=String(), position=0, doc=InputDocumentation(doc="--subfolder SUBFOLDER"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Assemblo_Abyss_V0_1_0().translate("wdl", allow_empty_container=True)


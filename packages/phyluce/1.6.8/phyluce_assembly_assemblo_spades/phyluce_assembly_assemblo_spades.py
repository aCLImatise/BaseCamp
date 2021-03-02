from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, File, Boolean

Phyluce_Assembly_Assemblo_Spades_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_assemblo_spades", base_command=["phyluce_assembly_assemblo_spades"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the assembly data")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores/threads to run with SPAdes")), ToolInput(tag="in_subfolder", input_type=String(optional=True), prefix="--subfolder", doc=InputDocumentation(doc="A subdirectory, below the level of the group,\ncontaining the reads")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_do_not_clean", input_type=Boolean(optional=True), prefix="--do-not-clean", doc=InputDocumentation(doc="Do not cleanup intermediate SPAdes files")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A configuration file containing reads to assemble")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="A directory of reads to assemble"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Assemblo_Spades_V0_1_0().translate("wdl", allow_empty_container=True)


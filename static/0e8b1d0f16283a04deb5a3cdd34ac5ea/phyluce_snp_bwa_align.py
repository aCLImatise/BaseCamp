from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Boolean

Phyluce_Snp_Bwa_Align_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_bwa_align", base_command=["phyluce_snp_bwa_align"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A configuration file containing")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the SNPs files")), ToolInput(tag="in_subfolder", input_type=String(optional=True), prefix="--subfolder", doc=InputDocumentation(doc="A subdirectory, below the level of the group,\ncontaining the reads")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores/threads to use")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_no_remove_duplicates", input_type=Boolean(optional=True), prefix="--no-remove-duplicates", doc=InputDocumentation(doc="Do not remove duplicate reads.")), ToolInput(tag="in_mem", input_type=Boolean(optional=True), prefix="--mem", doc=InputDocumentation(doc="Use bwa mem."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Bwa_Align_V0_1_0().translate("wdl", allow_empty_container=True)


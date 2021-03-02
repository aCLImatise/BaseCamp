from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Plascope_Sh_V0_1_0 = CommandToolBuilder(tool="plaScope.sh", base_command=["plaScope.sh"], inputs=[ToolInput(tag="in_no_banner", input_type=Boolean(optional=True), prefix="--no-banner", doc=InputDocumentation(doc="don't print beautiful banners")), ToolInput(tag="in_number_of_threads", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads[OPTIONAL] [default : 8]")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory [OPTIONAL] [default : current directory]")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample name [MANDATORY]")), ToolInput(tag="in_db_dir", input_type=Boolean(optional=True), prefix="--db_dir", doc=InputDocumentation(doc="path to centrifuge database [MANDATORY]")), ToolInput(tag="in_db_name", input_type=Boolean(optional=True), prefix="--db_name", doc=InputDocumentation(doc="centrifuge database name [MANDATORY]")), ToolInput(tag="in_forward_pairedend_reads", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="forward paired-end reads [MANDATORY]")), ToolInput(tag="in_reverse_pairedend_reads", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="reverse paired-end reads [MANDATORY]")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="SPAdes assembly fasta file [MANDATORY]")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory [OPTIONAL] [default : current directory]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plascope_Sh_V0_1_0().translate("wdl", allow_empty_container=True)


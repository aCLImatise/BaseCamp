from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Fermi_Remap_V0_1_0 = CommandToolBuilder(tool="fermi_remap", base_command=["fermi", "remap"], inputs=[ToolInput(tag="in_skip_ending_bases", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="skip ending INT bases of a read pair [0]")), ToolInput(tag="in_minimum_pairedend_coverage", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="minimum paired-end coverage [0]")), ToolInput(tag="in_maximum_insert_size", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="maximum insert size (external distance) [1000]")), ToolInput(tag="in_rank", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="rank [null]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_reads_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_contigs_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Remap_V0_1_0().translate("wdl", allow_empty_container=True)


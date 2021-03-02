from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dicey_Chop_V0_1_0 = CommandToolBuilder(tool="dicey_chop", base_command=["dicey", "chop"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --fq1 ] arg (=read1)       read1 output prefix")), ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --fq2 ] arg (=read2)       read2 output prefix")), ToolInput(tag="in_arg_read_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --length ] arg (=101)      read length")), ToolInput(tag="in_arg_insert_size", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --insertsize ] arg (=501)  insert size")), ToolInput(tag="in_generate_singleend_data", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --se ]                     generate single-end data")), ToolInput(tag="in_generate_reads_chromosome", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --chromosome ]             generate reads by chromosome")), ToolInput(tag="in_reverse_complement_reads", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --revcomp ]                reverse complement all reads")), ToolInput(tag="in_danio_rerio_dot_fado_tgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dicey_Chop_V0_1_0().translate("wdl", allow_empty_container=True)


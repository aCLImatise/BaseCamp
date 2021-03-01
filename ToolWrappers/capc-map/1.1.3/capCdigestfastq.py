from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Capcdigestfastq_V0_1_0 = CommandToolBuilder(tool="capCdigestfastq", base_command=["capCdigestfastq"], inputs=[ToolInput(tag="in_firstfq_first_pair", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="first_fq    is the first of the pair of fastq files")), ToolInput(tag="in_secondfq_second_pair", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="second_fq   is the second of the pair of fastq files")), ToolInput(tag="in_outputfq_name_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output_fq   is the name of the output fastq file")), ToolInput(tag="in_seq_sequence_restriction", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="SEQ         is the sequence of the restriction enzyme\nmust be characters ACGT only")), ToolInput(tag="in_x_bp_position", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="X           is the bp position within SEQ where the\ncut will occur (first base is 1; Xth base\nwill be the start of the right hand\nfragment)")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="option switches on 'long' mode, where only the\nlongest of the restriction fragments in each of\nthe pairs is kept\n"))], outputs=[ToolOutput(tag="out_outputfq_name_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputfq_name_output", type_hint=File()), doc=OutputDocumentation(doc="output_fq   is the name of the output fastq file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capcdigestfastq_V0_1_0().translate("wdl", allow_empty_container=True)


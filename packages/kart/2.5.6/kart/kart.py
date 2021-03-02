from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Kart_V0_1_0 = CommandToolBuilder(tool="kart", base_command=["kart"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [4]")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="files with #1 mates reads (format:fa, fq, fq.gz)")), ToolInput(tag="in_f_two", input_type=Boolean(optional=True), prefix="-f2", doc=InputDocumentation(doc="files with #2 mates reads (format:fa, fq, fq.gz)")), ToolInput(tag="in_alignment_filename_sam", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="alignment filename in SAM format [output.sam]")), ToolInput(tag="in_bo", input_type=Boolean(optional=True), prefix="-bo", doc=InputDocumentation(doc="alignment filename in BAM format")), ToolInput(tag="in_output_multiple_alignments", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="output multiple alignments")), ToolInput(tag="in_max_gaps_indels", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="max gaps (indels) [5]")), ToolInput(tag="in_pairedend_reads_interlaced", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="paired-end reads are interlaced in the same file")), ToolInput(tag="in_pac_bio", input_type=Boolean(optional=True), prefix="-pacbio", doc=InputDocumentation(doc="pacbio data")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="version")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_alignment_filename_sam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_alignment_filename_sam", type_hint=File()), doc=OutputDocumentation(doc="alignment filename in SAM format [output.sam]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kart_V0_1_0().translate("wdl", allow_empty_container=True)


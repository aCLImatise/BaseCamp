from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Rapidstats_Sh_V0_1_0 = CommandToolBuilder(tool="rapidStats.sh", base_command=["rapidStats.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc=": the input file")), ToolInput(tag="in_file_type", input_type=Boolean(optional=True), prefix="--filetype", doc=InputDocumentation(doc="= BAM/SAM/fq : Mention either BAM/SAM or FASTQ. Default FASTQ")), ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="--annot", doc=InputDocumentation(doc=": bed file with regions that should be annotated with read alignments (Multiple Bed files should be separated by commas)")), ToolInput(tag="in_rapid", input_type=File(optional=True), prefix="--rapid", doc=InputDocumentation(doc="/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="/ : set location of the bowtie2 index for alignment")), ToolInput(tag="in_contam_in", input_type=File(optional=True), prefix="--contamin", doc=InputDocumentation(doc=": use a double alignment step first aligning to a contamination file (default no)")), ToolInput(tag="in_index_co", input_type=File(optional=True), prefix="--indexco", doc=InputDocumentation(doc="/ set location of the contamination bowtie2 index for alignment (only with contamin=yes)")), ToolInput(tag="in_remove", input_type=String(optional=True), prefix="--remove", doc=InputDocumentation(doc=": remove unecessary intermediate files (default yes)")), ToolInput(tag="in_proc", input_type=Int(optional=True), prefix="--proc", doc=InputDocumentation(doc=": Number of processors for bowtie's use (default: 4)")), ToolInput(tag="in_multi", input_type=Int(optional=True), prefix="--multi", doc=InputDocumentation(doc=": Number of alignments to report. '-k' param of bowtie2 (default: 100)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapidstats_Sh_V0_1_0().translate("wdl", allow_empty_container=True)


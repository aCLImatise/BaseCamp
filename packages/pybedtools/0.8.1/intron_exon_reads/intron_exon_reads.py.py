from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Intron_Exon_Reads_Py_V0_1_0 = CommandToolBuilder(tool="intron_exon_reads.py", base_command=["intron_exon_reads.py"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="GFF or GTF file containing annotations")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file containing reads to be counted")), ToolInput(tag="in_stranded", input_type=Boolean(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Use strand-specific merging and overlap. Default is to\nignore strand")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use in parallel.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose (goes to stderr)")), ToolInput(tag="in_example", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_py_bed_tools", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_documentation", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intron_Exon_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)


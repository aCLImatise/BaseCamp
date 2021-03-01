from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Annotate_Hits_Pyseer_V0_1_0 = CommandToolBuilder(tool="annotate_hits_pyseer", base_command=["annotate_hits_pyseer"], inputs=[ToolInput(tag="in_bwa", input_type=String(optional=True), prefix="--bwa", doc=InputDocumentation(doc="Location of bwa executable [default=bwa]")), ToolInput(tag="in_tmp_prefix", input_type=Directory(optional=True), prefix="--tmp-prefix", doc=InputDocumentation(doc="Directory to store temporary files [default=./]\n")), ToolInput(tag="in_km_ers", input_type=String(), position=0, doc=InputDocumentation(doc="Kmers file, filtered output from SEER")), ToolInput(tag="in_references", input_type=String(), position=1, doc=InputDocumentation(doc="File of reference annotations. First column fasta\nsequence, second column gff annotation, third column\n'ref' or 'draft'")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="Output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Hits_Pyseer_V0_1_0().translate("wdl", allow_empty_container=True)


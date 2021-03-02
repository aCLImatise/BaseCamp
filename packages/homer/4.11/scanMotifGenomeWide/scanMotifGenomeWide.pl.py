from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Scanmotifgenomewide_Pl_V0_1_0 = CommandToolBuilder(tool="scanMotifGenomeWide.pl", base_command=["scanMotifGenomeWide.pl"], inputs=[ToolInput(tag="in_five_p", input_type=Boolean(optional=True), prefix="-5p", doc=InputDocumentation(doc="(report positions centered on the 5' start of the motif)")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="(format as a BED file, i.e. for UCSC upload)")), ToolInput(tag="in_int", input_type=Boolean(optional=True), prefix="-int", doc=InputDocumentation(doc="(round motif scores to nearest integer, use if making bigBed file)")), ToolInput(tag="in_homer_one", input_type=Boolean(optional=True), prefix="-homer1", doc=InputDocumentation(doc="(use the original homer)")), ToolInput(tag="in_homer_two", input_type=Boolean(optional=True), prefix="-homer2", doc=InputDocumentation(doc="(use homer2 instead of the original homer, default)")), ToolInput(tag="in_keep_all", input_type=Boolean(optional=True), prefix="-keepAll", doc=InputDocumentation(doc="(keep ALL sites, even ones that overlap, default is to keep one)")), ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="-mask", doc=InputDocumentation(doc="(search for motifs in repeat masked sequence)")), ToolInput(tag="in_number_cpus_use", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<#> (Number of CPUs to use)")), ToolInput(tag="in_motif", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanmotifgenomewide_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


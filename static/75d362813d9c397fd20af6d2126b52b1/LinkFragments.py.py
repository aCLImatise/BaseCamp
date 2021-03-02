from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Linkfragments_Py_V0_1_0 = CommandToolBuilder(tool="LinkFragments.py", base_command=["LinkFragments.py"], inputs=[ToolInput(tag="in_file_unlinked_hapcut", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FRAGMENTS], --fragments [FRAGMENTS]\nfile with unlinked hapcut2 fragments (generate using\n--10X 1 option in extractHAIRS)")), ToolInput(tag="in_vcf_file_phasing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[VCF], --VCF [VCF]\nvcf file for phasing")), ToolInput(tag="in_bam_file_barcoded", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[BAM_FILE], --bam_file [BAM_FILE]\nbam file with barcoded reads")), ToolInput(tag="in_output_file_linked", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[OUTFILE], --outfile [OUTFILE]\noutput file with linked fragments")), ToolInput(tag="in_distance_delineates_defaultkb", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[DISTANCE], --distance [DISTANCE]\ndistance in base pairs that delineates separate 10X\nmolecules, default=20kb")), ToolInput(tag="in_maximum_base_quality", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[MAXBQ], --maxbq [MAXBQ]\nmaximum base quality for an allele call, default=40")), ToolInput(tag="in_single_snp_frags", input_type=Boolean(optional=True), prefix="--single_SNP_frags", doc=InputDocumentation(doc="whether to keep fragments overlapping only one SNP\n")), ToolInput(tag="in_fragments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_linked", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_linked", type_hint=File()), doc=OutputDocumentation(doc="[OUTFILE], --outfile [OUTFILE]\noutput file with linked fragments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Linkfragments_Py_V0_1_0().translate("wdl", allow_empty_container=True)


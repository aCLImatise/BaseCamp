from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Chira_Quantify_Py_V0_1_0 = CommandToolBuilder(tool="chira_quantify.py", base_command=["chira_quantify.py"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Input BED file (default: None)")), ToolInput(tag="in_merged_bed", input_type=Boolean(optional=True), prefix="--merged_bed", doc=InputDocumentation(doc="Input merged BED file (default: None)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output file containing merged alignments (default:\nNone)")), ToolInput(tag="in_crl_share", input_type=Boolean(optional=True), prefix="--crl_share", doc=InputDocumentation(doc="Minimum fraction of reads of a locus that must overlap\nwith all CRL loci inorder to merge it into that CRL.\n(default: 0.7)")), ToolInput(tag="in_min_locus_size", input_type=Boolean(optional=True), prefix="--min_locus_size", doc=InputDocumentation(doc="Minimum number of reads a locus should have in order\nto participate in CRL creation.Always set this value\nrelative to your sequencing depth. Setting this to\nlower leadsCRLs of random multimappings Also consider\nsetting the --crl_share option along with this\n(default: 10)")), ToolInput(tag="in_em_threshold", input_type=Boolean(optional=True), prefix="--em_threshold", doc=InputDocumentation(doc="The maximum difference of transcripts expression\nbetween two consecutive iterations of EM algorithm to\nconverge. (default: 0.1)")), ToolInput(tag="in_build_crls_too", input_type=Boolean(optional=True), prefix="--build_crls_too", doc=InputDocumentation(doc="Create CRLs too (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output file containing merged alignments (default:\nNone)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chira_Quantify_Py_V0_1_0().translate("wdl", allow_empty_container=True)


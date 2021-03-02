from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean

Sampleancestry_V0_1_0 = CommandToolBuilder(tool="SampleAncestry", base_command=["SampleAncestry"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list(s) in VCF format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_min_snps", input_type=Int(optional=True), prefix="-min_snps", doc=InputDocumentation(doc="Minimum number of informative SNPs for population determination. If less SNPs are found, 'NOT_ENOUGH_SNPS' is returned.\nDefault value: '1000'")), ToolInput(tag="in_pop_dist", input_type=Float(optional=True), prefix="-pop_dist", doc=InputDocumentation(doc="Minimum relative distance between first/second population score. If below this score 'ADMIXED/UNKNOWN' is called.\nDefault value: '0.15'")), ToolInput(tag="in_build", input_type=Int(optional=True), prefix="-build", doc=InputDocumentation(doc="Genome build used to generate the input.\nDefault value: 'hg19'\nValid: 'hg19,hg38'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampleancestry_V0_1_0().translate("wdl", allow_empty_container=True)


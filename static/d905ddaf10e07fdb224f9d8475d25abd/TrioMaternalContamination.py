from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Triomaternalcontamination_V0_1_0 = CommandToolBuilder(tool="TrioMaternalContamination", base_command=["TrioMaternalContamination"], inputs=[ToolInput(tag="in_bam_m", input_type=File(optional=True), prefix="-bam_m", doc=InputDocumentation(doc="Input BAM file of mother.")), ToolInput(tag="in_bam_f", input_type=File(optional=True), prefix="-bam_f", doc=InputDocumentation(doc="Input BAM file of father.")), ToolInput(tag="in_bam_c", input_type=File(optional=True), prefix="-bam_c", doc=InputDocumentation(doc="Input BAM file of child.")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="-min_depth", doc=InputDocumentation(doc="Minimum depth for calling SNPs.\nDefault value: '3'")), ToolInput(tag="in_min_alt_count", input_type=Int(optional=True), prefix="-min_alt_count", doc=InputDocumentation(doc="Minimum number of alternate observations for calling a SNP.\nDefault value: '1'")), ToolInput(tag="in_build", input_type=Int(optional=True), prefix="-build", doc=InputDocumentation(doc="Genome build used to generate the input.\nDefault value: 'hg19'\nValid: 'hg19,hg38'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Triomaternalcontamination_V0_1_0().translate("wdl", allow_empty_container=True)


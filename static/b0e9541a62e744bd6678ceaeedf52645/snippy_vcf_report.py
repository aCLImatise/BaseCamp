from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Snippy_Vcf_Report_V0_1_0 = CommandToolBuilder(tool="snippy_vcf_report", base_command=["snippy-vcf_report"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="!        Output verbose debug info (default '0').")), ToolInput(tag="in_auto", input_type=Boolean(optional=True), prefix="--auto", doc=InputDocumentation(doc="!         Autoset --vcf/bam/ref to snippy names (default '0').")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of parallel threads to use (default '1').")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF input file (raw) (default '').")), ToolInput(tag="in_bam", input_type=String(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM alignments (indexed) (default '').")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="FASTA reference (indexed) (default '').")), ToolInput(tag="in_html", input_type=Boolean(optional=True), prefix="--html", doc=InputDocumentation(doc="!         Write a HTML report instead of TXT (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Vcf_Report_V0_1_0().translate("wdl", allow_empty_container=True)


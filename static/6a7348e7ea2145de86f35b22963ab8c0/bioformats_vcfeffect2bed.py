from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bioformats_Vcfeffect2Bed_V0_1_0 = CommandToolBuilder(tool="bioformats_vcfeffect2bed", base_command=["bioformats", "vcfeffect2bed"], inputs=[ToolInput(tag="in_impacts_effects_reported", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="[{HIGH,MODERATE,LOW,MODIFIER} ...], --impacts {HIGH,MODERATE,LOW,MODIFIER} [{HIGH,MODERATE,LOW,MODIFIER} ...]\nimpacts of effects to be reported")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="[{REFHET,COMHET,ALTHOM} ...], --genotypes {REFHET,COMHET,ALTHOM} [{REFHET,COMHET,ALTHOM} ...]")), ToolInput(tag="in_ignore_errors", input_type=Boolean(optional=True), prefix="--ignore_errors", doc=InputDocumentation(doc="ignore errors in an input file")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=0, doc=InputDocumentation(doc="an snpEff-annotated VCF file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="the output BED3+ file of sample effects"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Vcfeffect2Bed_V0_1_0().translate("wdl", allow_empty_container=True)


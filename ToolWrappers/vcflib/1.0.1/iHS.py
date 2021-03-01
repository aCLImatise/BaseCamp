from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Ihs_V0_1_0 = CommandToolBuilder(tool="iHS", base_command=["iHS"], inputs=[ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc=":1-1000 > STDOUT 2> STDERR")), ToolInput(tag="in_contact", input_type=Boolean(optional=True), prefix="-Contact", doc=InputDocumentation(doc=": zev.kronenberg [at] gmail.com")), ToolInput(tag="in_notes", input_type=Boolean(optional=True), prefix="-Notes", doc=InputDocumentation(doc=": If you find a bug, please open a report on github!")), ToolInput(tag="in_support", input_type=Boolean(optional=True), prefix="-Support", doc=InputDocumentation(doc=": Please post questions to biostars.org")), ToolInput(tag="in_contribution", input_type=Boolean(optional=True), prefix="-Contribution", doc=InputDocumentation(doc=":\nZev Kronenberg (UW Genome Sciences)\nMark Yandell   (UU Human genetics)\nMike Shapiro   (UU Biology)\nEJ Osborne     (UU Human genetics)\nBrett Kennedy  (UU Human genetics)\nDaniel Ence    (UU Human genetics)\nErik Garrison  (Wellcome Trust Sanger Institute)\nTravis Collier (UC Davis)\n-     Your name goes here       -'")), ToolInput(tag="in_target", input_type=Int(optional=True), prefix="--target", doc=InputDocumentation(doc="")), ToolInput(tag="in_ihs", input_type=String(), position=0, doc=InputDocumentation(doc="--target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \"))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ihs_V0_1_0().translate("wdl")


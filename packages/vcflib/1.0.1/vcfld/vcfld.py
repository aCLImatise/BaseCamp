from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Vcfld_V0_1_0 = CommandToolBuilder(tool="vcfld", base_command=["vcfld"], inputs=[ToolInput(tag="in_contact", input_type=Boolean(optional=True), prefix="-Contact", doc=InputDocumentation(doc=": zev.kronenberg [at] gmail.com")), ToolInput(tag="in_notes", input_type=Boolean(optional=True), prefix="-Notes", doc=InputDocumentation(doc=": If you find a bug, please open a report on github!")), ToolInput(tag="in_support", input_type=Boolean(optional=True), prefix="-Support", doc=InputDocumentation(doc=": Please post questions to biostars.org")), ToolInput(tag="in_contribution", input_type=Boolean(optional=True), prefix="-Contribution", doc=InputDocumentation(doc=":\nZev Kronenberg (UW Genome Sciences)\nMark Yandell   (UU Human genetics)\nMike Shapiro   (UU Biology)\nEJ Osborne     (UU Human genetics)\nBrett Kennedy  (UU Human genetics)\nDaniel Ence    (UU Human genetics)\nErik Garrison  (Wellcome Trust Sanger Institute)\nTravis Collier (UC Davis)\n-     Your name goes here       -'"))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfld_V0_1_0().translate("wdl")


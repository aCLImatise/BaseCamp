from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Quality_Filter_Pl_V0_1_0 = CommandToolBuilder(tool="quality_filter.pl", base_command=["quality_filter.pl"], inputs=[ToolInput(tag="in_prints_aed_maker", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Prints transcripts with an AED <1 (MAKER default)")), ToolInput(tag="in_prints_transcripts_andor", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Prints transcripts with an AED <1 and/or Pfam domain\nif in gff3 (MAKER Standard)")), ToolInput(tag="in_number_given_value", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="<number between 0 and 1> Prints transcripts with an\nAED < the given value\n")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quality_Filter_Pl_V0_1_0().translate("wdl")


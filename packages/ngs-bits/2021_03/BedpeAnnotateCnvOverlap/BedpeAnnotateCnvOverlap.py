from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bedpeannotatecnvoverlap_V0_1_0 = CommandToolBuilder(tool="BedpeAnnotateCnvOverlap", base_command=["BedpeAnnotateCnvOverlap"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input SV file (in BEDPE format).")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output SV file (in BEDPE format).")), ToolInput(tag="in_cnv", input_type=File(optional=True), prefix="-cnv", doc=InputDocumentation(doc="Input CNV file (in TSV format).")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output SV file (in BEDPE format)."))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedpeannotatecnvoverlap_V0_1_0().translate("wdl")


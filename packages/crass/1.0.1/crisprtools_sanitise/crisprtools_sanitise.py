from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Crisprtools_Sanitise_V0_1_0 = CommandToolBuilder(tool="crisprtools_sanitise", base_command=["crisprtools", "sanitise"], inputs=[ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name, creates a sanitised copy of the input file  [default: sanitise input file inplace]")), ToolInput(tag="in_sanitise_features_equivelent", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Sanitise all features. Equivelent to -sdfc")), ToolInput(tag="in_sanitise_the_spacers", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Sanitise the spacers")), ToolInput(tag="in_sanitise_direct_repeats", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Sanitise the direct repeats")), ToolInput(tag="in_sanitise_flanking_sequences", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Sanitise the flanking sequences")), ToolInput(tag="in_sanitise_the_contigs", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Sanitise the contigs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprtools_Sanitise_V0_1_0().translate("wdl", allow_empty_container=True)


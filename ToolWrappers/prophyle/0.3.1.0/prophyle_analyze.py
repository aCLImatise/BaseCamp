from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Prophyle_Analyze_V0_1_0 = CommandToolBuilder(tool="prophyle_analyze", base_command=["prophyle", "analyze"], inputs=[ToolInput(tag="in_statistics_use_computation", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="['w', 'u', 'wl', 'ul']\nstatistics to use for the computation of\nhistograms: w (default) => weighted assignments; u\n=> unique assignments, non-weighted; wl => weighted\nassignments, propagated to leaves; ul => unique\nassignments, propagated to leaves.")), ToolInput(tag="in_input_format_assignments", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="['sam', 'bam', 'cram', 'uncompressed_bam', 'kraken', 'histo']\nInput format of assignments [auto]")), ToolInput(tag="in_advanced_configuration_dictionary", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]       advanced configuration (a JSON dictionary)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Analyze_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Psmfeatureextractor_V0_1_0 = CommandToolBuilder(tool="PSMFeatureExtractor", base_command=["PSMFeatureExtractor"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                 Input file(s) (valid formats: 'mzid', 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                 Output file in mzid or idXML format (valid formats: 'mzid', 'idXML')")), ToolInput(tag="in_extra", input_type=String(optional=True), prefix="-extra", doc=InputDocumentation(doc="List of the MetaData parameters to be included in a feature set for precolator.")), ToolInput(tag="in_multiple_search_engines", input_type=Boolean(optional=True), prefix="-multiple_search_engines", doc=InputDocumentation(doc="Combine PSMs from different search engines by merging on scan level.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                 Output file in mzid or idXML format (valid formats: 'mzid', 'idXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psmfeatureextractor_V0_1_0().translate("wdl", allow_empty_container=True)


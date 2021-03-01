from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Getfeatures_Py_V0_1_0 = CommandToolBuilder(tool="getfeatures.py", base_command=["getfeatures.py"], inputs=[ToolInput(tag="in_linear", input_type=Boolean(optional=True), prefix="--linear", doc=InputDocumentation(doc="consider genome circular")), ToolInput(tag="in_allow_only_features_type", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="allow only features of type TYPE")), ToolInput(tag="in_forbid_features_type", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc="forbid all features of type TYPE")), ToolInput(tag="in_allow_only_features_name", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="allow only features with name NAME")), ToolInput(tag="in_forbid_features_name", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="forbid all features with name NAME")), ToolInput(tag="in_allow_only_entries", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="allow only entries with TAX in the taxonomy")), ToolInput(tag="in_forbid_entries_tax", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="forbid all entries with TAX in the taxonomy")), ToolInput(tag="in_shift_coordinates_offset", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="shift coordinates by OFFSET")), ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="output gff")), ToolInput(tag="in_output_format_namefeature", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="output format: %name=feature name, %type=feature type,\n%start=feature start, %stop=feature end, %strand=feature strand,\n%s=sequence, %a=accession, %n=name")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="consider only max score part per gene")), ToolInput(tag="in_gb", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getfeatures_Py_V0_1_0().translate("wdl", allow_empty_container=True)


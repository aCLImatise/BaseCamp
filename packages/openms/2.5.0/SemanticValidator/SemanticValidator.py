from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Semanticvalidator_V0_1_0 = CommandToolBuilder(tool="SemanticValidator", base_command=["SemanticValidator"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*            Input file (any xml file) (valid formats: 'analysisXML', 'mzML', 'TraML', 'mzid', 'mzData', 'xml')")), ToolInput(tag="in_mapping_file", input_type=File(optional=True), prefix="-mapping_file", doc=InputDocumentation(doc="*  Mapping file which is used to semantically validate the given XML file against this mapping file (see 'share/OpenMS/MAPPING' for templates). (valid formats: 'xml')")), ToolInput(tag="in_cv", input_type=String(optional=True), prefix="-cv", doc=InputDocumentation(doc="Controlled Vocabulary files containg the CV terms (if left empty, a set of default files are used) (valid formats: 'obo')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Semanticvalidator_V0_1_0().translate("wdl", allow_empty_container=True)


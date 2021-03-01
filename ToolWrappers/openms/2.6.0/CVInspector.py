from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Cvinspector_V0_1_0 = CommandToolBuilder(tool="CVInspector", base_command=["CVInspector"], inputs=[ToolInput(tag="in_cv_files", input_type=String(optional=True), prefix="-cv_files", doc=InputDocumentation(doc="*    List of ontology files in OBO format. (valid formats: 'obo')")), ToolInput(tag="in_cv_names", input_type=File(optional=True), prefix="-cv_names", doc=InputDocumentation(doc="*    List of identifiers (one for each ontology file).")), ToolInput(tag="in_mapping_file", input_type=File(optional=True), prefix="-mapping_file", doc=InputDocumentation(doc="Mapping file in CVMapping (XML) format. (valid formats: 'XML')")), ToolInput(tag="in_ignore_cv", input_type=String(optional=True), prefix="-ignore_cv", doc=InputDocumentation(doc="A list of CV identifiers which should be ignored. (default: '[UO PATO BTO]')")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="-html", doc=InputDocumentation(doc="Writes an HTML version of the mapping file with annotated CV terms (valid formats: 'HTML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cvinspector_V0_1_0().translate("wdl")


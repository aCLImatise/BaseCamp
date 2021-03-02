from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Chado_Export_Gaf_V0_1_0 = CommandToolBuilder(tool="chado_export_gaf", base_command=["chado", "export", "gaf"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="YAML file containing connection details")), ToolInput(tag="in_use_password", input_type=Boolean(optional=True), prefix="--use_password", doc=InputDocumentation(doc="connect with password (default: no password)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="GAF output file")), ToolInput(tag="in_abbreviation", input_type=String(optional=True), prefix="--abbreviation", doc=InputDocumentation(doc="abbreviation/short name of the organism")), ToolInput(tag="in_database_authority", input_type=File(optional=True), prefix="--database_authority", doc=InputDocumentation(doc="database from which the file is created, e.g.\n'UniProtKB'")), ToolInput(tag="in_annotation_level", input_type=File(optional=True), prefix="--annotation_level", doc=InputDocumentation(doc="level to which GO terms are related in the output file\n(default: same level as in the database)")), ToolInput(tag="in_include_obsolete", input_type=Boolean(optional=True), prefix="--include_obsolete", doc=InputDocumentation(doc="export all features, including obsoletes"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="GAF output file")), ToolOutput(tag="out_annotation_level", output_type=File(optional=True), selector=InputSelector(input_to_select="in_annotation_level", type_hint=File()), doc=OutputDocumentation(doc="level to which GO terms are related in the output file\n(default: same level as in the database)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chado_Export_Gaf_V0_1_0().translate("wdl", allow_empty_container=True)


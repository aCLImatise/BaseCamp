from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Chado_Export_Gff_V0_1_0 = CommandToolBuilder(tool="chado_export_gff", base_command=["chado", "export", "gff"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="YAML file containing connection details")), ToolInput(tag="in_use_password", input_type=Boolean(optional=True), prefix="--use_password", doc=InputDocumentation(doc="connect with password (default: no password)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="GFF output file")), ToolInput(tag="in_abbreviation", input_type=String(optional=True), prefix="--abbreviation", doc=InputDocumentation(doc="abbreviation/short name of the organism")), ToolInput(tag="in_export_fast_a", input_type=Boolean(optional=True), prefix="--export_fasta", doc=InputDocumentation(doc="export FASTA sequences along with annotations")), ToolInput(tag="in_fast_a_file", input_type=File(optional=True), prefix="--fasta_file", doc=InputDocumentation(doc="FASTA output file with sequences (default: paste to\nend of GFF file)")), ToolInput(tag="in_include_obsolete", input_type=Boolean(optional=True), prefix="--include_obsolete", doc=InputDocumentation(doc="export all features, including obsoletes"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="GFF output file")), ToolOutput(tag="out_fast_a_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fast_a_file", type_hint=File()), doc=OutputDocumentation(doc="FASTA output file with sequences (default: paste to\nend of GFF file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chado_Export_Gff_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tripaille_Analysis_Load_Interpro_V0_1_0 = CommandToolBuilder(tool="tripaille_analysis_load_interpro", base_command=["tripaille", "analysis", "load_interpro"], inputs=[ToolInput(tag="in_interpro_parameters", input_type=String(optional=True), prefix="--interpro_parameters", doc=InputDocumentation(doc="InterProScan parameters used to produce these")), ToolInput(tag="in_query_type", input_type=String(optional=True), prefix="--query_type", doc=InputDocumentation(doc="The feature type (e.g. 'gene', 'mRNA', 'contig')\nof the query. It must be a valid Sequence\nOntology term.")), ToolInput(tag="in_query_unique_name", input_type=Boolean(optional=True), prefix="--query_uniquename", doc=InputDocumentation(doc="Use this if the query_re regular expression\nmatches unique names instead of names in the\ndatabase.")), ToolInput(tag="in_parse_go", input_type=Boolean(optional=True), prefix="--parse_go", doc=InputDocumentation(doc="Load GO annotation to the database")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Do not wait for job to complete")), ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="analysis algorithm")), ToolInput(tag="in_source_version", input_type=String(optional=True), prefix="--sourceversion", doc=InputDocumentation(doc="analysis sourceversion")), ToolInput(tag="in_source_uri", input_type=String(optional=True), prefix="--sourceuri", doc=InputDocumentation(doc="analysis sourceuri")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="analysis description")), ToolInput(tag="in_date_executed", input_type=String(optional=True), prefix="--date_executed", doc=InputDocumentation(doc="analysis date_executed (yyyy-mm-dd)")), ToolInput(tag="in_results", input_type=String(), position=0, doc=InputDocumentation(doc="--query_re TEXT             The regular expression that can uniquely"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Analysis_Load_Interpro_V0_1_0().translate("wdl", allow_empty_container=True)


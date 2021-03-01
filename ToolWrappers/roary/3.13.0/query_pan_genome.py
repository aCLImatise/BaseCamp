from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Boolean

Query_Pan_Genome_V0_1_0 = CommandToolBuilder(tool="query_pan_genome", base_command=["query_pan_genome"], inputs=[ToolInput(tag="in_groups_filename", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="groups filename [clustered_proteins]")), ToolInput(tag="in_action_unionintersectioncomplementgenemultifastadifference", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="action (union/intersection/complement/gene_multifasta/difference) [union]")), ToolInput(tag="in_percentage_isolates_gene", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="percentage of isolates a gene must be in to be core [99]")), ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [pan_genome_results]")), ToolInput(tag="in_comma_separated_list", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="comma separated list of gene names for use with gene_multifasta action")), ToolInput(tag="in_comma_list_one", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="comma separated list of filenames, comparison set one")), ToolInput(tag="in_comma_list_two", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="comma separated list of filenames, comparison set two")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [pan_genome_results]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Query_Pan_Genome_V0_1_0().translate("wdl", allow_empty_container=True)


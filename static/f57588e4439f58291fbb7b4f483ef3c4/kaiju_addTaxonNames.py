from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Kaiju_Addtaxonnames_V0_1_0 = CommandToolBuilder(tool="kaiju_addTaxonNames", base_command=["kaiju-addTaxonNames"], inputs=[ToolInput(tag="in_name_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of input file")), ToolInput(tag="in_name_specified_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file. If not specified, output will be printed to STDOUT.")), ToolInput(tag="in_name_nodesdmp_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of nodes.dmp file")), ToolInput(tag="in_name_namesdmp_file", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Name of names.dmp file.")), ToolInput(tag="in_unclassified_reads_contained", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Unclassified reads are not contained in the output.")), ToolInput(tag="in_print_full_taxon", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Print full taxon path.")), ToolInput(tag="in_print_taxon_path", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Print taxon path containing only ranks specified by a comma-separated list,\nfor example: superkingdom,phylum,class,order,family,genus,species")), ToolInput(tag="in_enable_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Enable verbose output."))], outputs=[ToolOutput(tag="out_name_specified_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_specified_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file. If not specified, output will be printed to STDOUT."))], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Addtaxonnames_V0_1_0().translate("wdl")


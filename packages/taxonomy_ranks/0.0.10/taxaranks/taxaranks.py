from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Taxaranks_V0_1_0 = CommandToolBuilder(tool="taxaranks", base_command=["taxaranks"], inputs=[ToolInput(tag="in_file_be_list", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="A file can be a list of ncbi taxa id or species names (or higher\nranks, e.g. Family, Order), or a mixture of them.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="outfile")), ToolInput(tag="in_also_print_taxid", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Also print out the taxid for each rank")), ToolInput(tag="in_also_print_records", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="Also print out the records without lineage information found to\nthe '-o <file>'")), ToolInput(tag="in_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output"))], outputs=[ToolOutput(tag="out_also_print_records", output_type=File(optional=True), selector=InputSelector(input_to_select="in_also_print_records", type_hint=File()), doc=OutputDocumentation(doc="Also print out the records without lineage information found to\nthe '-o <file>'"))], container="quay.io/biocontainers/taxonomy_ranks:0.0.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxaranks_V0_1_0().translate("wdl")


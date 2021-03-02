from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Diamond_Add_Taxonomy_V0_1_0 = CommandToolBuilder(tool="diamond_add_taxonomy", base_command=["diamond_add_taxonomy"], inputs=[ToolInput(tag="in_tax_dump_filename", input_type=File(optional=True), prefix="--taxdump_filename", doc=InputDocumentation(doc="Path to local copy of NCBI taxdump.tar.gz file")), ToolInput(tag="in_tax_db_filename", input_type=File(optional=True), prefix="--taxdb_filename", doc=InputDocumentation(doc="Name for the processed database, will be\nloaded if it exists")), ToolInput(tag="in_diamond_output_format", input_type=Int(optional=True), prefix="--diamond_output_format", doc=InputDocumentation(doc="Output format used by DIAMOND (most include\nstaxids)  [default: 6 qseqid sseqid pident\nlength mismatch gapopen qstart qend sstart\nsend evalue bitscore slen qlen qcovhsp stitle\nstaxids]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output file to write output with expanded\ntaxonomy information (TSV format)")), ToolInput(tag="in_stax_ids", input_type=String(), position=0, doc=InputDocumentation(doc="A new output file is created with 7 extra columns on the right hand side")), ToolInput(tag="in_column_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The taxonomy lookup is performed using the NCBI taxonomy database via ete3"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file to write output with expanded\ntaxonomy information (TSV format)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Diamond_Add_Taxonomy_V0_1_0().translate("wdl", allow_empty_container=True)


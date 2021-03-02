from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Humann2_Unpack_Pathways_V0_1_0 = CommandToolBuilder(tool="humann2_unpack_pathways", base_command=["humann2_unpack_pathways"], inputs=[ToolInput(tag="in_input_genes", input_type=File(optional=True), prefix="--input-genes", doc=InputDocumentation(doc="the gene family or EC abundance file")), ToolInput(tag="in_input_pathways", input_type=File(optional=True), prefix="--input-pathways", doc=InputDocumentation(doc="the pathway abundance file")), ToolInput(tag="in_gene_mapping", input_type=File(optional=True), prefix="--gene-mapping", doc=InputDocumentation(doc="gene family to reaction mapping file")), ToolInput(tag="in_pathway_mapping", input_type=File(optional=True), prefix="--pathway-mapping", doc=InputDocumentation(doc="reaction to pathway mapping file")), ToolInput(tag="in_remove_taxonomy", input_type=File(optional=True), prefix="--remove-taxonomy", doc=InputDocumentation(doc="remove the taxonomy from the output file")), ToolInput(tag="in_the_table_write", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="the table to write\n")), ToolInput(tag="in_unpack_pathway_abundances", input_type=String(), position=0, doc=InputDocumentation(doc="Unpack pathway abundances to show genes included"))], outputs=[ToolOutput(tag="out_remove_taxonomy", output_type=File(optional=True), selector=InputSelector(input_to_select="in_remove_taxonomy", type_hint=File()), doc=OutputDocumentation(doc="remove the taxonomy from the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Unpack_Pathways_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Array

Phyluce_Genetrees_Get_Tree_Counts_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_get_tree_counts", base_command=["phyluce_genetrees_get_tree_counts"], inputs=[ToolInput(tag="in_trees", input_type=File(optional=True), prefix="--trees", doc=InputDocumentation(doc="Tree file")), ToolInput(tag="in_output_file_store", input_type=File(optional=True), prefix="--locus-support-output", doc=InputDocumentation(doc="The output file in which to store trees and their\nassociated loci (config format)")), ToolInput(tag="in_schema", input_type=String(optional=True), prefix="--schema", doc=InputDocumentation(doc="The scheme of the input data")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="The taxon on which to root trees")), ToolInput(tag="in_extension", input_type=File(optional=True), prefix="--extension", doc=InputDocumentation(doc="File extension used with each 'best' tree")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Loci to exclude\n")), ToolInput(tag="in_var_6", input_type=String(), position=0, doc=InputDocumentation(doc="[--schema {nexus,newick,nexml,fasta,phylip}]"))], outputs=[ToolOutput(tag="out_output_file_store", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_store", type_hint=File()), doc=OutputDocumentation(doc="The output file in which to store trees and their\nassociated loci (config format)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Get_Tree_Counts_V0_1_0().translate("wdl", allow_empty_container=True)


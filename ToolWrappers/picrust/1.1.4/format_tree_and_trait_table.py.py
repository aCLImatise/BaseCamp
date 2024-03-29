from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Format_Tree_And_Trait_Table_Py_V0_1_0 = CommandToolBuilder(tool="format_tree_and_trait_table.py", base_command=["format_tree_and_trait_table.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_tree_to_trait_mapping", input_type=File(optional=True), prefix="--tree_to_trait_mapping", doc=InputDocumentation(doc="a two-column, tab-delimited text file mapping\nidentifiers in the tree(column 1) to identifiers in\nthe trait table (column 2). If supplied, the\nidentifiers in the trait table will be converted to\nmatch the identifiers in the tree. (This mapping does\nnot need to be supplied if the tree and trait table\nalready use a common set of identifiers.) [default:\nnone]")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="the output directory [default: ./formatted/]")), ToolInput(tag="in_input_table_delimiter", input_type=String(optional=True), prefix="--input_table_delimiter", doc=InputDocumentation(doc="The character delimiting fields in the input trait\ntable. Valid choices are:tab,space,comma [default:\ntab]")), ToolInput(tag="in_output_table_delimiter", input_type=String(optional=True), prefix="--output_table_delimiter", doc=InputDocumentation(doc="The character delimiting fields in the output trait\ntable. Valid choices are:tab,space,comma [default:\ntab]")), ToolInput(tag="in_suppress_bifurcating", input_type=Boolean(optional=True), prefix="--suppress_bifurcating", doc=InputDocumentation(doc="If set, don't ensure that tree is fully bifurcating.\n[default: False]")), ToolInput(tag="in_convert_to_nexus", input_type=Boolean(optional=True), prefix="--convert_to_nexus", doc=InputDocumentation(doc="Convert tree to NEXUS format, including a translate\nblock mapping tip names to numbers. [default: False]")), ToolInput(tag="in_convert_values_to_ints", input_type=Boolean(optional=True), prefix="--convert_values_to_ints", doc=InputDocumentation(doc="Convert the values for each character state to\nintegers. [default: False]")), ToolInput(tag="in_no_minimum_branch_length", input_type=Boolean(optional=True), prefix="--no_minimum_branch_length", doc=InputDocumentation(doc="If set, don't ensure all branches have at least a\nsmall but non-zero branchlength. [default: False]")), ToolInput(tag="in_supress_tree_filter", input_type=Boolean(optional=True), prefix="--supress_tree_filter", doc=InputDocumentation(doc="If set, don't filter out tree tips that aren't listed\nin the trait table [default: False]")), ToolInput(tag="in_supress_table_filter", input_type=Boolean(optional=True), prefix="--supress_table_filter", doc=InputDocumentation(doc="If set, don't filter out trait table entries that\naren't listed in the tree [default: False]")), ToolInput(tag="in_add_branch_length_to_root", input_type=Boolean(optional=True), prefix="--add_branch_length_to_root", doc=InputDocumentation(doc="Add a short branch to the root node (this is required\nby some phylogeny programs).  The length of the branch\nis determined by the min_branch_length option\n[default: False]")), ToolInput(tag="in_limit_tree_to_otus_fp", input_type=String(optional=True), prefix="--limit_tree_to_otus_fp", doc=InputDocumentation(doc="Will prune the reference tree to contain only those\ntips that are within the given OTU table")), ToolInput(tag="in_input_tree", input_type=String(optional=True), prefix="--input_tree", doc=InputDocumentation(doc="the input tree (Newick format) [REQUIRED]")), ToolInput(tag="in_input_trait_table", input_type=String(optional=True), prefix="--input_trait_table", doc=InputDocumentation(doc="the input trait table (QIIME OTU table format)\n[REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="the output directory [default: ./formatted/]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Format_Tree_And_Trait_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)


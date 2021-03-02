from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float

Prune_Otus_Py_V0_1_0 = CommandToolBuilder(tool="prune_otus.py", base_command=["prune_otus.py"], inputs=[ToolInput(tag="in_seqs_otus_fn", input_type=String(optional=True), prefix="--seqs_otus_fn", doc=InputDocumentation(doc="The output from the pick OTUs step, e.g. seqs_otus.txt")), ToolInput(tag="in_id_to_taxonomy_fn", input_type=File(optional=True), prefix="--id_to_taxonomy_fn", doc=InputDocumentation(doc="Path to tab-delimited file mapping sequences to\nassigned taxonomy.")), ToolInput(tag="in_percent_of_samples", input_type=Int(optional=True), prefix="--percent_of_samples", doc=InputDocumentation(doc="OTUs that occur in less than this percent of samples\nwill be removed. Default is 5 percent.")), ToolInput(tag="in_percent_of_sequences", input_type=Float(optional=True), prefix="--percent_of_sequences", doc=InputDocumentation(doc="OTUs that occur in less than this percent of total\nsequences will be removed. Default is 0.01 percent.")), ToolInput(tag="in_phylogenetic_level", input_type=String(optional=True), prefix="--phylogenetic_level", doc=InputDocumentation(doc="Set the phylogenetic level at which to join OTUs for\nconsideration in pruning. Default is 'g'(group).")), ToolInput(tag="in_output_pruned_otus_fn", input_type=File(optional=True), prefix="--output_pruned_otus_fn", doc=InputDocumentation(doc="The main output file that will contain the remaining\nOTUs and sequence IDs.")), ToolInput(tag="in_output_removed_otus_fn", input_type=File(optional=True), prefix="--output_removed_otus_fn", doc=InputDocumentation(doc="The file to write out the set of OTUs that were\nremoved by the filter."))], outputs=[ToolOutput(tag="out_output_pruned_otus_fn", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pruned_otus_fn", type_hint=File()), doc=OutputDocumentation(doc="The main output file that will contain the remaining\nOTUs and sequence IDs.")), ToolOutput(tag="out_output_removed_otus_fn", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_removed_otus_fn", type_hint=File()), doc=OutputDocumentation(doc="The file to write out the set of OTUs that were\nremoved by the filter."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prune_Otus_Py_V0_1_0().translate("wdl", allow_empty_container=True)


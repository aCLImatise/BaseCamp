from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String, Boolean

Dram_Py_Annotate_Genes_V0_1_0 = CommandToolBuilder(tool="DRAM.py_annotate_genes", base_command=["DRAM.py", "annotate_genes"], inputs=[ToolInput(tag="in_input_faa", input_type=File(optional=True), prefix="--input_faa", doc=InputDocumentation(doc="fasta file, optionally with wildcards to point\ntoindividual MAGs (default: None)")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="output directory (default: None)")), ToolInput(tag="in_bit_score_threshold", input_type=Int(optional=True), prefix="--bit_score_threshold", doc=InputDocumentation(doc="minimum bitScore of search to retain hits (default:\n60)")), ToolInput(tag="in_rbh_bit_score_threshold", input_type=Int(optional=True), prefix="--rbh_bit_score_threshold", doc=InputDocumentation(doc="minimum bitScore of reverse best hits to retain hits\n(default: 350)")), ToolInput(tag="in_custom_db_name", input_type=String(optional=True), prefix="--custom_db_name", doc=InputDocumentation(doc="Names of custom databases, can be used multiple times.\n(default: None)")), ToolInput(tag="in_custom_fast_a_loc", input_type=String(optional=True), prefix="--custom_fasta_loc", doc=InputDocumentation(doc="Location of fastas to annotated against, can be used\nmultiple times butmust match nubmer of\ncustom_db_name's (default: None)")), ToolInput(tag="in_use_uniref", input_type=Boolean(optional=True), prefix="--use_uniref", doc=InputDocumentation(doc="Annotate these fastas against UniRef, drastically\ndecreases run time and memory requirements (default:\nFalse)")), ToolInput(tag="in_low_mem_mode", input_type=Boolean(optional=True), prefix="--low_mem_mode", doc=InputDocumentation(doc="Skip annotating with uniref and use kofam instead of\nKEGG genes even if provided. Drastically decreases\nmemory usage (default: False)")), ToolInput(tag="in_keep_tmp_dir", input_type=Int(optional=True), prefix="--keep_tmp_dir", doc=InputDocumentation(doc="number of processors to use (default: 10)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="output directory (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Py_Annotate_Genes_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Make_Batch_For_Get_Organelle_Py_V0_1_0 = CommandToolBuilder(tool="make_batch_for_get_organelle.py", base_command=["make_batch_for_get_organelle.py"], inputs=[ToolInput(tag="in_output_base_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output base name for each sample")), ToolInput(tag="in_other_arguments_wouldtakeuse", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Other arguments that get_organelle_from_reads.py would\ntake.Use double quotation marks to include all the\nargumentsExample: '-s plastome.fasta -a\nmitochondrial.fasta -F embplant_pt -w 105'")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Choose to make command for all samples including samples\nwith results.Default: skip those with results.")), ToolInput(tag="in_annotated", input_type=Boolean(optional=True), prefix="--annotated", doc=InputDocumentation(doc="Choose to make annotated command for skipped\ncommands.Default: False.")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="Choose to only search for the fastq with the same base\nname with the directory (*/*_1.fq). Default: relaxed\nsearching.\n")), ToolInput(tag="in_mk_get_organelle_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Batch_For_Get_Organelle_Py_V0_1_0().translate("wdl")


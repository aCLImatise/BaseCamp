from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, Float, File

Deseq2_Visualization_Py_V0_1_0 = CommandToolBuilder(tool="deseq2_visualization.py", base_command=["deseq2_visualization.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var", input_type=String(optional=True), prefix="--var", doc=InputDocumentation(doc="variable that you want to test.")), ToolInput(tag="in_mod_one", input_type=Int(optional=True), prefix="--mod1", doc=InputDocumentation(doc="one value of the tested variable you want to compare\n(if more than 2 value in your experiement variable\nanalyzed.)")), ToolInput(tag="in_mod_two", input_type=Int(optional=True), prefix="--mod2", doc=InputDocumentation(doc="second value of the tested variable you want to\ncompare.(if more than 2 value in your experiement\nvariable analyzed.)")), ToolInput(tag="in_pad_j", input_type=Float(optional=True), prefix="--padj", doc=InputDocumentation(doc="the adjusted p-value threshold to defined OTU as\ndifferentially abundant. [Default: 0.05]")), ToolInput(tag="in_phylo_seq_data", input_type=File(optional=True), prefix="--phyloseqData", doc=InputDocumentation(doc="The path to the RData file containing a phyloseq\nobject (result of FROGS Phyloseq Import Data)")), ToolInput(tag="in_dds", input_type=File(optional=True), prefix="--dds", doc=InputDocumentation(doc="The path to the Rdata file containing the DESeq dds\nobject (result of FROGS DESeq2 Preprocess)")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nDESeq2_visualization.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deseq2_Visualization_Py_V0_1_0().translate("wdl")


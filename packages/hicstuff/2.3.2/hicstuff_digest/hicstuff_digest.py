from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, Directory, String

Hicstuff_Digest_V0_1_0 = CommandToolBuilder(tool="hicstuff_digest", base_command=["hicstuff", "digest"], inputs=[ToolInput(tag="in_circular", input_type=Boolean(optional=True), prefix="--circular", doc=InputDocumentation(doc="Specify if the genome is circular.")), ToolInput(tag="in_enzyme", input_type=Int(optional=True), prefix="--enzyme", doc=InputDocumentation(doc="[,ENZ2,...]     A restriction enzyme or an integer\nrepresenting fixed chunk sizes (in bp).\nMultiple comma-separated enzymes can\nbe given.")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Write even if the output file already exists.")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Minimum size threshold to keep\nfragments. [default: 0]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory where the fragments and\ncontigs files will be written.\nDefaults to current directory.")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Show a histogram of fragment length\ndistribution after digestion.")), ToolInput(tag="in_fig_dir", input_type=File(optional=True), prefix="--figdir", doc=InputDocumentation(doc="Path to directory of the output figure.\nBy default, the figure is only shown\nbut not saved.")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Fasta file to be digested"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Write even if the output file already exists.")), ToolOutput(tag="out_fig_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fig_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to directory of the output figure.\nBy default, the figure is only shown\nbut not saved."))], container="quay.io/biocontainers/hicstuff:2.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicstuff_Digest_V0_1_0().translate("wdl")


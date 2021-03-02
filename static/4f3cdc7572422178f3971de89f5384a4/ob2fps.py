from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ob2Fps_V0_1_0 = CommandToolBuilder(tool="ob2fps", base_command=["ob2fps"], inputs=[ToolInput(tag="in_fp_two", input_type=Boolean(optional=True), prefix="--FP2", doc=InputDocumentation(doc="linear fragments up to 7 atoms")), ToolInput(tag="in_fp_three", input_type=Boolean(optional=True), prefix="--FP3", doc=InputDocumentation(doc="SMARTS patterns specified in the file patterns.txt")), ToolInput(tag="in_fp_four", input_type=Boolean(optional=True), prefix="--FP4", doc=InputDocumentation(doc="SMARTS patterns specified in the file")), ToolInput(tag="in_sub_struct", input_type=Boolean(optional=True), prefix="--substruct", doc=InputDocumentation(doc="generate ChemFP substructure fingerprints")), ToolInput(tag="in_id_tag", input_type=String(optional=True), prefix="--id-tag", doc=InputDocumentation(doc="tag name containing the record id (SD files only)")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="input structure format (default autodetects from the\nfilename extension)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="save the fingerprints to FILENAME (default=stdout)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output structure format (default guesses from output\nfilename, or is 'fps')")), ToolInput(tag="in_errors", input_type=String(optional=True), prefix="--errors", doc=InputDocumentation(doc="how should structure parse errors be handled?\n(default=ignore)")), ToolInput(tag="in_filenames", input_type=String(), position=0, doc=InputDocumentation(doc="input structure files (default is stdin)")), ToolInput(tag="in_smarts_inte_ligand_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="--MACCS               Open Babel's implementation of the MACCS 166 keys"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output structure format (default guesses from output\nfilename, or is 'fps')"))], container="quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ob2Fps_V0_1_0().translate("wdl")


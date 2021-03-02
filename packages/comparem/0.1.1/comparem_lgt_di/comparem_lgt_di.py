from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, Boolean, String

Comparem_Lgt_Di_V0_1_0 = CommandToolBuilder(tool="comparem_lgt_di", base_command=["comparem", "lgt_di"], inputs=[ToolInput(tag="in_file_ext", input_type=File(optional=True), prefix="--file_ext", doc=InputDocumentation(doc="extension of files to process (default: fna)")), ToolInput(tag="in_crit_value", input_type=Float(optional=True), prefix="--crit_value", doc=InputDocumentation(doc="critical value for defining deviant genes (default:\n0.001)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_nucleotide_gene_files", input_type=String(), position=0, doc=InputDocumentation(doc="input files with genes in nucleotide space")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc="output directory to write dinucleotide usage for each\ngene in each genome"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparem_Lgt_Di_V0_1_0().translate("wdl", allow_empty_container=True)


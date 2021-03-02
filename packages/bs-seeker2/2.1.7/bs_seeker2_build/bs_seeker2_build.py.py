from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Bs_Seeker2_Build_Py_V0_1_0 = CommandToolBuilder(tool="bs_seeker2_build.py", base_command=["bs_seeker2-build.py"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Input your reference genome file (fasta)")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Aligner program to perform the analysis: bowtie,\nbowtie2, soap, rmap [Default: bowtie]")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path to the aligner program. Detected:\nbowtie: None\nbowtie2: /usr/local/bin\nrmap: None\nsoap: None")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Path to the reference genome library (generated in\npreprocessing genome) [Default:\n/usr/local/bin/bs_utils/reference_genomes]")), ToolInput(tag="in_rrbs", input_type=Boolean(optional=True), prefix="--rrbs", doc=InputDocumentation(doc="Build index specially for Reduced Representation\nBisulfite Sequencing experiments. Genome other than\ncertain fragments will be masked. [Default: False]")), ToolInput(tag="in_low", input_type=Int(optional=True), prefix="--low", doc=InputDocumentation(doc="lower bound of fragment length (excluding recognition\nsequence such as C-CGG) [Default: 20]")), ToolInput(tag="in_up", input_type=Int(optional=True), prefix="--up", doc=InputDocumentation(doc="upper bound of fragment length (excluding recognition\nsequence such as C-CGG ends) [Default: 500]")), ToolInput(tag="in_cut_site", input_type=String(optional=True), prefix="--cut-site", doc=InputDocumentation(doc="Cut sites of restriction enzyme. Ex: MspI(C-CGG),\nMael:(C-TAG), double-enzyme MspI&Mael:(C-CGG,C-TAG).\n[Default: C-CGG]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bs_Seeker2_Build_Py_V0_1_0().translate("wdl", allow_empty_container=True)


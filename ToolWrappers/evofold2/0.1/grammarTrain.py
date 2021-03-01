from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Grammartrain_V0_1_0 = CommandToolBuilder(tool="grammarTrain", base_command=["grammarTrain"], inputs=[ToolInput(tag="in_arg_file_used", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --treeFile ] arg                 File with Newick tree used with phylo")), ToolInput(tag="in_arg_name_use", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --annoName ] arg                 Name of annotation to use.")), ToolInput(tag="in_arg_defines_number", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts\nused for each transition distribution\n(For each transition, the number of\npseudocounts is defined as the initital\ntransition probs in the input file\ntimes the given pseudoCounts value).")), ToolInput(tag="in_arg_defines_stopping", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM\ntraining. The training will stop when\nthe difference in log likelihood is\nbelow minDeltaLogLik (default is 1e-4).")), ToolInput(tag="in_arg_max_numbr", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --maxIter ] arg (=100)           Max numbr if iterations of the EM\ntraining (default is 100).")), ToolInput(tag="in_arg_grammarlogfiletxtlog_file", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --logFile ] arg (=grammarLogFile.txt)\nLog file for EM training (default is\n./grammarLogFile.txt).")), ToolInput(tag="in_grammars_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-a [ --annoMapFile ] arg              Anno map file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grammartrain_V0_1_0().translate("wdl", allow_empty_container=True)


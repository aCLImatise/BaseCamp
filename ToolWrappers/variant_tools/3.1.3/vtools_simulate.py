from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Vtools_Simulate_V0_1_0 = CommandToolBuilder(tool="vtools_simulate", base_command=["vtools", "simulate"], inputs=[ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random seed for the simulation. A random seed will be\nused by default but a specific seed could be used to\nreproduce a previously executed simulation.")), ToolInput(tag="in_replicates", input_type=Int(optional=True), prefix="--replicates", doc=InputDocumentation(doc="Number of consecutive replications to simulate")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Maximum number of concurrent jobs to execute, for\nsteps of a pipeline that allows multi-processing.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_spec_file", input_type=String(), position=0, doc=InputDocumentation(doc="Name of a model specification file, which can be the\nname of an online specification file, or path to a\nlocal .pipeline file. Please use command 'vtools show\nsimulations' to get a list all available simulation\nmodels.")), ToolInput(tag="in_models", input_type=String(), position=1, doc=InputDocumentation(doc="Name of one or more simulation models defined in\nSPECFILE, which can be ignored if the SPECFILE only\ndefines one simulation model. Please use command\n'vtools show simulation SPECFILE' for details of\navailable models in SPECFILE, including model-specific\nparameters that could be used to change the default\nbehavior of these models."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Simulate_V0_1_0().translate("wdl", allow_empty_container=True)


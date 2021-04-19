from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Parsec_Workflows_Run_Workflow_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_run_workflow", base_command=["parsec", "workflows", "run_workflow"], inputs=[ToolInput(tag="in_dataset_map", input_type=Int(optional=True), prefix="--dataset_map", doc=InputDocumentation(doc="A mapping of workflow inputs to datasets. The\ndatasets source can be a\nLibraryDatasetDatasetAssociation (``ldda``),\nLibraryDataset (``ld``), or\nHistoryDatasetAssociation (``hda``). The map\nmust be in the following format: ``{'<input>':\n{'id': <encoded dataset ID>, 'src': '[ldda, ld,\nhda]'}}`` (e.g. ``{'23': {'id':\n'29beef4fadeed09f', 'src': 'ld'}}``)")), ToolInput(tag="in_params", input_type=String(optional=True), prefix="--params", doc=InputDocumentation(doc="A mapping of non-datasets tool parameters (see\nbelow)")), ToolInput(tag="in_history_id", input_type=String(optional=True), prefix="--history_id", doc=InputDocumentation(doc="The encoded history ID where to store the\nworkflow output. Alternatively, ``history_name``\nmay be specified to create a new history.")), ToolInput(tag="in_history_name", input_type=String(optional=True), prefix="--history_name", doc=InputDocumentation(doc="Create a new history with the given name to\nstore the workflow output. If both\n``history_id`` and ``history_name`` are\nprovided, ``history_name`` is ignored. If\nneither is specified, a new 'Unnamed history' is\ncreated.")), ToolInput(tag="in_import_inputs_to_history", input_type=Boolean(optional=True), prefix="--import_inputs_to_history", doc=InputDocumentation(doc="If ``True``, used workflow inputs will be\nimported into the history. If ``False``, only\nworkflow outputs will be visible in the given\nhistory.")), ToolInput(tag="in_replacement_params", input_type=String(optional=True), prefix="--replacement_params", doc=InputDocumentation(doc="pattern-based replacements for post-job actions\n(see below)")), ToolInput(tag="in_step_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The ``replacement_params`` dict should map parameter names in"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Run_Workflow_V0_1_0().translate("wdl")

